-- Verify: schemas/agentic_db_app_public/tables/contacts/indexes/contacts_tags_gin_idx


SELECT verify_index('agentic_db_app_public.contacts', 'contacts_tags_gin_idx');


