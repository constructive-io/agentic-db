-- Revert agent-db-embeddings:001-triggers from pg

BEGIN;

DROP TRIGGER IF EXISTS tg_enqueue_embedding_notes ON agent_db_app_public.notes;
DROP TRIGGER IF EXISTS tg_enqueue_embedding_events ON agent_db_app_public.events;
DROP TRIGGER IF EXISTS tg_enqueue_embedding_companies ON agent_db_app_public.companies;
DROP TRIGGER IF EXISTS tg_enqueue_embedding_contacts ON agent_db_app_public.contacts;

DROP FUNCTION IF EXISTS agent_db_app_public.enqueue_embedding_job();

COMMIT;
