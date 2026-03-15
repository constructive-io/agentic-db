-- Deploy: schemas/agent_db_app_public/tables/deals/constraints/deals_pkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/deals/table
-- requires: schemas/agent_db_app_public/tables/companies/columns/main_image_id/column


ALTER TABLE agent_db_app_public.deals 
  ADD CONSTRAINT deals_pkey PRIMARY KEY (id);

