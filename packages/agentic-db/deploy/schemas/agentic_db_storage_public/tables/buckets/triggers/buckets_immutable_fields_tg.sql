-- Deploy: schemas/agentic_db_storage_public/tables/buckets/triggers/buckets_immutable_fields_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_private/schema
-- requires: schemas/agentic_db_storage_public/schema
-- requires: schemas/agentic_db_storage_public/tables/buckets/table
-- requires: schemas/agentic_db_private/trigger_fns/buckets_immutable_fields


CREATE TRIGGER buckets_immutable_fields_tg
BEFORE UPDATE ON agentic_db_storage_public.buckets
FOR EACH ROW
EXECUTE PROCEDURE agentic_db_private.buckets_immutable_fields ( );

