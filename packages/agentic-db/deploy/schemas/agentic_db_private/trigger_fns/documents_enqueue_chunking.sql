-- Deploy: schemas/agentic_db_private/trigger_fns/documents_enqueue_chunking
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_private/schema
-- requires: schemas/agentic_db_app_public/tables/autonomy_records/indexes/autonomy_records_source_idx


CREATE FUNCTION "agentic_db_private".documents_enqueue_chunking() RETURNS TRIGGER AS $_PGFN_$
BEGIN
  PERFORM app_jobs.add_job(jwt_private.current_database_id(), 'generate_chunks', json_build_object('table', 'documents', 'schema', 'agentic_db_app_public', 'id', NEW.id::text, 'chunks_table', 'documents_chunks', 'chunk_size', '1000', 'chunk_overlap', '200', 'chunk_strategy', 'fixed'));
  RETURN NEW;
END;
$_PGFN_$ LANGUAGE plpgsql VOLATILE SECURITY DEFINER;

