-- Deploy: schemas/agentic_db_private/trigger_fns/conversations_enqueue_embedding
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_private/schema
-- requires: schemas/agentic_db_app_public/tables/expenses/indexes/expenses_tags_gin_idx


CREATE FUNCTION "agentic_db_private".conversations_enqueue_embedding() RETURNS TRIGGER AS $_PGFN_$
BEGIN
  PERFORM app_jobs.add_job(jwt_private.current_database_id(), 'generate_embedding', json_build_object('table', 'conversations', 'schema', 'agentic_db_app_public', 'id', NEW.id::text, 'field', 'embedding'));
  RETURN NEW;
END;
$_PGFN_$ LANGUAGE plpgsql VOLATILE;

