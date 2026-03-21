-- Verify: schemas/agentic_db_app_public/tables/contacts/indexes/contacts_embedding_hnsw_idx


SELECT verify_index('agentic_db_app_public.contacts', 'contacts_embedding_hnsw_idx');


