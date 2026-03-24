-- Verify: schemas/agentic_db_app_public/tables/emails/indexes/emails_embedding_text_bm25_idx


SELECT verify_index('agentic_db_app_public.emails', 'emails_embedding_text_bm25_idx');


