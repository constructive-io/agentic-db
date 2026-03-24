-- Deploy: schemas/agentic_db_app_public/tables/skills/triggers/skills_enqueue_chunking_insert_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_private/schema
-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/skills/table
-- requires: schemas/agentic_db_private/trigger_fns/skills_enqueue_chunking
-- requires: schemas/agentic_db_app_public/tables/touchpoints/indexes/touchpoints_channel_idx


CREATE TRIGGER skills_enqueue_chunking_insert_tg
AFTER INSERT ON "agentic_db_app_public".skills
FOR EACH ROW
EXECUTE PROCEDURE "agentic_db_private".skills_enqueue_chunking ( );

