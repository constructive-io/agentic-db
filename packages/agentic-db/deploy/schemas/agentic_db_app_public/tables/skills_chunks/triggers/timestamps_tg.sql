-- Deploy: schemas/agentic_db_app_public/tables/skills_chunks/triggers/timestamps_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/skills_chunks/table
-- requires: schemas/agentic_db_app_public/tables/touchpoints/indexes/touchpoints_channel_idx


CREATE TRIGGER timestamps_tg
BEFORE INSERT OR UPDATE ON agentic_db_app_public.skills_chunks
FOR EACH ROW
EXECUTE PROCEDURE stamps.timestamps ( );

