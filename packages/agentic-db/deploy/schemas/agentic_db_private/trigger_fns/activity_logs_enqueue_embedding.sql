-- Deploy: schemas/agentic_db_private/trigger_fns/activity_logs_enqueue_embedding
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_private/schema
-- requires: schemas/agentic_db_app_public/tables/codebases_chunks/indexes/codebases_chunks_chunk_index_idx


CREATE FUNCTION agentic_db_private.activity_logs_enqueue_embedding() RETURNS TRIGGER AS $_PGFN_$
BEGIN
  PERFORM app_jobs.add_job(jwt_private.current_database_id(), 'generate_embedding', jsonb_build_object('table', 'activity_logs', 'schema', 'agentic_db_app_public', 'id', NEW.id::text, 'field', 'embedding'));
  RETURN NEW;
END
$_PGFN_$ LANGUAGE plpgsql VOLATILE;

