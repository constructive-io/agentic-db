-- Verify: schemas/agentic_db_app_public/tables/contacts/indexes/contacts_first_name_gin_idx


SELECT verify_index('agentic_db_app_public.contacts', 'contacts_first_name_gin_idx');


