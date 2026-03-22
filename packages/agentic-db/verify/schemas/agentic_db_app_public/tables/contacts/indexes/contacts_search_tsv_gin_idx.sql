-- Verify: schemas/agentic_db_app_public/tables/contacts/indexes/contacts_search_tsv_gin_idx


SELECT verify_index('agentic_db_app_public.contacts', 'contacts_search_tsv_gin_idx');


