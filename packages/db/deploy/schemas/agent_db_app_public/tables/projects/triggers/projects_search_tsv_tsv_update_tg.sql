-- Deploy: schemas/agent_db_app_public/tables/projects/triggers/projects_search_tsv_tsv_update_tg
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_private/schema
-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/projects/table
-- requires: schemas/agent_db_private/trigger_fns/projects_search_tsv_tsv
-- requires: schemas/agent_db_app_public/tables/venues/triggers/venues_search_tsv_tsv_update_tg


CREATE TRIGGER projects_search_tsv_tsv_update_tg
BEFORE UPDATE ON "agent_db_app_public".projects
FOR EACH ROW
WHEN (OLD.name IS DISTINCT FROM NEW.name OR OLD.description IS DISTINCT FROM NEW.description)
EXECUTE PROCEDURE "agent_db_private".projects_search_tsv_tsv ( );

