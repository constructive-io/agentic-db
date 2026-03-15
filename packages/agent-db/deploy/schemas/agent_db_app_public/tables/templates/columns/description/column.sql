-- Deploy: schemas/agent_db_app_public/tables/templates/columns/description/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/templates/table
-- requires: schemas/agent_db_app_public/tables/templates/columns/name/alterations/alt0000001559


ALTER TABLE agent_db_app_public.templates 
  ADD COLUMN description text;

