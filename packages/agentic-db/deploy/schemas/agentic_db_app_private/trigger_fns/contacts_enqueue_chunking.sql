-- Deploy: schemas/agentic_db_app_private/trigger_fns/contacts_enqueue_chunking
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_private/schema


CREATE FUNCTION agentic_db_app_private.contacts_enqueue_chunking() RETURNS TRIGGER AS $_PGFN_$
BEGIN
  PERFORM app_jobs.add_job('generate_chunks', json_build_object('table', 'contacts', 'schema', 'agentic_db_app_public', 'id', NEW.id::text, 'chunks_table', 'contacts_chunks', 'chunk_size', '1000', 'chunk_overlap', '200', 'chunk_strategy', 'fixed'));
  RETURN NEW;
END;
$_PGFN_$ LANGUAGE plpgsql VOLATILE SECURITY DEFINER;

