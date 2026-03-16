-- Deploy: schemas/agentic_db_app_public/tables/projects/triggers/projects_search_tsv_tsv_insert_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_private/schema
-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/projects/table
-- requires: schemas/agentic_db_private/trigger_fns/projects_search_tsv_tsv
-- requires: schemas/agentic_db_app_public/tables/venues/triggers/venues_search_tsv_tsv_update_tg


CREATE TRIGGER projects_search_tsv_tsv_insert_tg
BEFORE INSERT ON "agentic_db_app_public".projects
FOR EACH ROW
EXECUTE PROCEDURE "agentic_db_private".projects_search_tsv_tsv ( );

