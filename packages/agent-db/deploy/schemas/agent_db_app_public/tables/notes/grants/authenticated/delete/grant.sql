-- Deploy: schemas/agent_db_app_public/tables/notes/grants/authenticated/delete/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/notes/table
-- requires: schemas/agent_db_app_public/tables/venues/columns/main_image_id/column


GRANT DELETE ON agent_db_app_public.notes TO authenticated;

