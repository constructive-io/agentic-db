-- Deploy: schemas/agentic_db_app_public/tables/autonomy_records/triggers/autonomy_records_embedding_stale_insert_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_private/schema
-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/autonomy_records/table
-- requires: schemas/agentic_db_private/trigger_fns/autonomy_records_embedding_stale
-- requires: schemas/agentic_db_app_public/tables/raw_contact_urls/indexes/raw_contact_urls_source_idx


CREATE TRIGGER autonomy_records_embedding_stale_insert_tg
BEFORE INSERT ON "agentic_db_app_public".autonomy_records
FOR EACH ROW
EXECUTE PROCEDURE "agentic_db_private".autonomy_records_embedding_stale ( );

