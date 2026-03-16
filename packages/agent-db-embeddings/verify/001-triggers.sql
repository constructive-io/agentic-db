-- Verify agent-db-embeddings:001-triggers on pg

BEGIN;

SELECT has_function_privilege('agent_db_app_public.enqueue_embedding_job()', 'execute');

ROLLBACK;
