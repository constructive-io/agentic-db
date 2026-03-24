-- Deploy: schemas/agentic_db_status_public/tables/app_level_requirements/triggers/timestamps_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_status_public/schema
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_status_public/tables/app_level_requirements/table


CREATE TRIGGER timestamps_tg
BEFORE INSERT OR UPDATE ON agentic_db_status_public.app_level_requirements
FOR EACH ROW
EXECUTE PROCEDURE stamps.timestamps ( );

