-- Deploy: schemas/agentic_db_app_public/tables/deals/triggers/deals_enqueue_chunking_insert_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/deals/table


CREATE TRIGGER deals_enqueue_chunking_insert_tg
AFTER INSERT ON "agentic_db_app_public".deals
FOR EACH ROW
EXECUTE PROCEDURE "agentic_db_private".deals_enqueue_chunking ( );

