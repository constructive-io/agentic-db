-- Deploy: schemas/agentic_db_app_private/trigger_fns/companies_enqueue_embedding
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_private/schema


CREATE FUNCTION agentic_db_app_private.companies_enqueue_embedding() RETURNS TRIGGER AS $_PGFN_$
BEGIN
  PERFORM app_jobs.add_job('generate_embedding', json_build_object('table', 'companies', 'schema', 'agentic_db_app_public', 'id', NEW.id::text, 'field', 'embedding'));
  RETURN NEW;
END;
$_PGFN_$ LANGUAGE plpgsql VOLATILE;

