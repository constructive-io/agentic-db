-- Verify: schemas/agentic_db_app_public/tables/thread_participants/indexes/thread_participants_email_thread_id_idx


SELECT verify_index('agentic_db_app_public.thread_participants', 'thread_participants_email_thread_id_idx');


