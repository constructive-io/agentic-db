-- Deploy: schemas/agentic_db_private/trigger_fns/code_chunks_enqueue_embedding
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_private/schema
-- requires: schemas/agentic_db_app_public/tables/projects/indexes/projects_priority_idx


CREATE FUNCTION agentic_db_private.code_chunks_enqueue_embedding() RETURNS TRIGGER AS $_PGFN_$
BEGIN
  PERFORM app_jobs.add_job(jwt_private.current_database_id(), 'generate_embedding', json_build_object('table', 'code_chunks', 'schema', 'agentic_db_app_public', 'id', NEW.id::text, 'field', 'embedding'));
  RETURN NEW;
END;
$_PGFN_$ LANGUAGE plpgsql VOLATILE;

