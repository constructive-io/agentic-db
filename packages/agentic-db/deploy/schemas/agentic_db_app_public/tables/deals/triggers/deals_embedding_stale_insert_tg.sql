-- Deploy: schemas/agentic_db_app_public/tables/deals/triggers/deals_embedding_stale_insert_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_private/schema
-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/deals/table
-- requires: schemas/agentic_db_private/trigger_fns/deals_embedding_stale
-- requires: schemas/agentic_db_app_public/tables/deals/columns/embedding_text/column


CREATE TRIGGER deals_embedding_stale_insert_tg
BEFORE INSERT ON agentic_db_app_public.deals
FOR EACH ROW
EXECUTE PROCEDURE agentic_db_private.deals_embedding_stale ( );

