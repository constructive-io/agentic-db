-- Revert: schemas/agent_db_app_public/tables/agents/columns/status/alterations/alt0000001137




ALTER TABLE agent_db_app_public.agents 
    ALTER COLUMN status DROP DEFAULT;



