<?php

use Illuminate\Database\Seeder;
use App\DocumentType;

class DocumentTypesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DocumentType::truncate();
		DocumentType::create([
			'document_type' => 'Resume',
		]);
		DocumentType::create([
			'document_type' => 'Application Letter',
		]);
		DocumentType::create([
			'document_type' => 'Admission',
		]);
    }
}
