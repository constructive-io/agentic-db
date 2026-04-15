-- Deploy: schemas/agentic_db_storage_public/tables/files/triggers/files_immutable_fields_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_private/schema
-- requires: schemas/agentic_db_storage_public/schema
-- requires: schemas/agentic_db_storage_public/tables/files/table
-- requires: schemas/agentic_db_private/trigger_fns/files_immutable_fields


CREATE TRIGGER files_immutable_fields_tg
BEFORE UPDATE ON agentic_db_storage_public.files
FOR EACH ROW
EXECUTE PROCEDURE agentic_db_private.files_immutable_fields ( );

