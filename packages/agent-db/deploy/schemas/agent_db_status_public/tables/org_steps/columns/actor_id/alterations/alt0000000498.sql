-- Deploy: schemas/agent_db_status_public/tables/org_steps/columns/actor_id/alterations/alt0000000498
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_status_public/schema
-- requires: schemas/agent_db_status_public/tables/org_steps/table
-- requires: schemas/agent_db_status_public/tables/org_steps/columns/actor_id/column



ALTER TABLE agent_db_status_public.org_steps 
    ALTER COLUMN actor_id SET DEFAULT jwt_public.current_user_id();

