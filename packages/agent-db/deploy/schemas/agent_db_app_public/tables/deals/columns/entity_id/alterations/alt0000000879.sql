-- Deploy: schemas/agent_db_app_public/tables/deals/columns/entity_id/alterations/alt0000000879
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/deals/table
-- requires: schemas/agent_db_app_public/tables/deals/columns/entity_id/column
-- requires: schemas/agent_db_app_public/tables/companies/columns/main_image_id/column


ALTER TABLE agent_db_app_public.deals 
  ALTER COLUMN entity_id SET NOT NULL;

