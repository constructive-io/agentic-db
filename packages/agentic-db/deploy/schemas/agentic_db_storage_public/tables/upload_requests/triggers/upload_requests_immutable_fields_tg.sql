-- Deploy: schemas/agentic_db_storage_public/tables/upload_requests/triggers/upload_requests_immutable_fields_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_private/schema
-- requires: schemas/agentic_db_storage_public/schema
-- requires: schemas/agentic_db_storage_public/tables/upload_requests/table
-- requires: schemas/agentic_db_private/trigger_fns/upload_requests_immutable_fields


CREATE TRIGGER upload_requests_immutable_fields_tg
BEFORE UPDATE ON agentic_db_storage_public.upload_requests
FOR EACH ROW
EXECUTE PROCEDURE agentic_db_private.upload_requests_immutable_fields ( );

