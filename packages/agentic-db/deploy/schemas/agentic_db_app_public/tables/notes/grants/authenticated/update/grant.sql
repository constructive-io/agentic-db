-- Deploy: schemas/agentic_db_app_public/tables/notes/grants/authenticated/update/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/notes/table
-- requires: schemas/agentic_db_app_public/tables/venues/columns/main_image_id/column


GRANT UPDATE ON agentic_db_app_public.notes TO authenticated;

