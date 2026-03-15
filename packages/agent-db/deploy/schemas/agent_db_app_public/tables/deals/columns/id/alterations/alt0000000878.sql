-- Deploy: schemas/agent_db_app_public/tables/deals/columns/id/alterations/alt0000000878
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/deals/table
-- requires: schemas/agent_db_app_public/tables/deals/columns/id/column
-- requires: schemas/agent_db_app_public/tables/companies/columns/main_image_id/column



ALTER TABLE agent_db_app_public.deals 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

