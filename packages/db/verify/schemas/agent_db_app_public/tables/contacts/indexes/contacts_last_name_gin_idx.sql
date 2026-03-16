-- Verify: schemas/agent_db_app_public/tables/contacts/indexes/contacts_last_name_gin_idx


SELECT verify_index('agent_db_app_public.contacts', 'contacts_last_name_gin_idx');


