-- Verify: schemas/agent_db_app_public/tables/contacts/indexes/contacts_embedding_text_bm25_idx


SELECT verify_index('agent_db_app_public.contacts', 'contacts_embedding_text_bm25_idx');


