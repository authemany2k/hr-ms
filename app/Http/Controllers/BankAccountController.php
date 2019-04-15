<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;

use App\BankAccount;
use App\Http\Requests\BankAccountRequest;
use App\User;
use Auth;

class BankAccountController extends Controller
{
	public function __construct()
    {
        $this->middleware('auth');
    }
	
    public function index()
    {
        if(Auth::user()->role->role_permission('view_bank_accounts')){
			$bank_accounts = BankAccount::paginate(30);
			return view('bank-accounts.index', compact('bank_accounts'));
		}else{
			abort(403);
		}
    }
	
	public function search(Request $request)
	{
		if(Auth::user()->role->role_permission('view_bank_accounts')){
			$users = User::whereRaw("(CONCAT(first_name,' ',last_name) like ?)", ['%'.$request->get('term').'%'])->paginate(50);
			$bank_accounts = BankAccount::whereIn('user_id', $users->pluck('id'))->paginate(30);
			return view('bank-accounts.index', compact('bank_accounts'));
		}else{
			abort(403);
		}
	}
    
    public function create(User $user)
    {
		if(Auth::user()->role->role_permission('create_bank_accounts')){
			if($user->bank_account){
				return redirect('users/'.$user->id.'/bank-account/'.$user->bank_account->id.'/edit');
			}else{
				return view('bank-accounts.create', compact('user'));
			}
		}else{
			abort(403);
		}
    }
	
    public function store(BankAccountRequest $request, User $user)
    {
		if(Auth::user()->role->role_permission('create_bank_accounts')){
			$bank_account = BankAccount::create($request->all());
			return redirect(isset($user->id) ? 'users/'.$user->id : 'bank-accounts')->withSuccess($bank_account->account_name.' has been saved.');
		}else{
			abort(403);
		}
    }
	
    public function show(BankAccount $bank_account)
    {
        if(Auth::user()->role->role_permission('view_bank_accounts')){
			return $bank_account;
		}else{
			abort(403);
		}
    }
	
    public function edit(User $user, BankAccount $bank_account)
    {
        if(Auth::user()->role->role_permission('edit_bank_accounts')){
			return view('bank-accounts.edit', compact('bank_account', 'user'));
		}else{
			abort(403);
		}
    }
	
    public function update(BankAccountRequest $request, User $user, BankAccount $bank_account)
    {
        if(Auth::user()->role->role_permission('edit_bank_accounts')){
			$bank_account->update($request->all());
			return redirect(isset($user->id) ? 'users/'.$user->id : 'bank-accounts')->withSuccess($bank_account->account_name.' has been updated.');
		}else{
			abort(403);
		}
    }
	
    public function destroy(BankAccount $bank_account)
    {
        if(Auth::user()->role->role_permission('delete_bank_accounts')){
			$bank_account->delete();
			return redirect('bank-accounts')->withSuccess($bank_account->account_name.' has been deleted.');
		}else{
			abort(403);
		}
    }
}
