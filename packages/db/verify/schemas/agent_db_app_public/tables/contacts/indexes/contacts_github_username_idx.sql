-- Verify: schemas/agent_db_app_public/tables/contacts/indexes/contacts_github_username_idx


SELECT verify_index('agent_db_app_public.contacts', 'contacts_github_username_idx');


