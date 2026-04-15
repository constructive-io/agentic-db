-- Deploy: schemas/agentic_db_app_public/tables/rules/triggers/rules_enqueue_chunking_insert_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/rules/table
-- requires: schemas/agentic_db_app_public/tables/touchpoints/indexes/touchpoints_channel_idx


CREATE TRIGGER rules_enqueue_chunking_insert_tg
AFTER INSERT ON "agentic_db_app_public".rules
FOR EACH ROW
EXECUTE PROCEDURE "agentic_db_private".rules_enqueue_chunking ( );

