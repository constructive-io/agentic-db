-- Deploy: schemas/agentic_db_app_public/tables/codebas_chunks/grants/authenticated/select/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/codebas_chunks/table
-- requires: schemas/agentic_db_app_public/tables/projects/indexes/projects_priority_idx


GRANT SELECT ON agentic_db_app_public.codebas_chunks TO authenticated;

