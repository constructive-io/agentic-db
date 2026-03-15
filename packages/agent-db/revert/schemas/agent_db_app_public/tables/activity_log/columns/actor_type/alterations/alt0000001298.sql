-- Revert: schemas/agent_db_app_public/tables/activity_log/columns/actor_type/alterations/alt0000001298


ALTER TABLE agent_db_app_public.activity_log 
  ALTER COLUMN actor_type DROP NOT NULL;


