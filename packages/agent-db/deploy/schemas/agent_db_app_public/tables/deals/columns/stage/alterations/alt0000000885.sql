-- Deploy: schemas/agent_db_app_public/tables/deals/columns/stage/alterations/alt0000000885
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/deals/table
-- requires: schemas/agent_db_app_public/tables/deals/columns/stage/column
-- requires: schemas/agent_db_app_public/tables/deals/columns/name/alterations/alt0000000884



ALTER TABLE agent_db_app_public.deals 
    ALTER COLUMN stage SET DEFAULT 'lead';

