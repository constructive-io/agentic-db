-- Deploy: schemas/agent_db_app_public/tables/venues/columns/main_image_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/venues/table
-- requires: schemas/agent_db_app_public/tables/venues/columns/search_tsv/column


ALTER TABLE agent_db_app_public.venues 
  ADD COLUMN main_image_id uuid;

