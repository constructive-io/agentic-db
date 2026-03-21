-- Deploy: schemas/agentic_db_app_public/tables/repositories/grants/authenticated/select/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/repositories/table
-- requires: schemas/agentic_db_app_public/tables/projects/triggers/projects_search_tsv_tsv_update_tg


GRANT SELECT ON agentic_db_app_public.repositories TO authenticated;

