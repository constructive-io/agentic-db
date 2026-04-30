-- Deploy: schemas/agentic_db_app_public/tables/autonomy_records/triggers/autonomy_records_embedding_stale_update_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_private/schema
-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/autonomy_records/table
-- requires: schemas/agentic_db_private/trigger_fns/autonomy_records_embedding_stale
-- requires: schemas/agentic_db_app_public/tables/raw_contact_urls/indexes/raw_contact_urls_url_idx


CREATE TRIGGER autonomy_records_embedding_stale_update_tg
BEFORE UPDATE ON agentic_db_app_public.autonomy_records
FOR EACH ROW
WHEN (OLD.title IS DISTINCT FROM NEW.title OR OLD.content IS DISTINCT FROM NEW.content)
EXECUTE PROCEDURE "agentic_db_private".autonomy_records_embedding_stale ( );

