-- Deploy: schemas/agent_db_status_public/tables/app_levels/constraints/app_levels_owner_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_status_public/schema
-- requires: schemas/agent_db_users_public/tables/users/table
-- requires: schemas/agent_db_status_public/tables/app_levels/table


ALTER TABLE "agent_db_status_public".app_levels 
  ADD CONSTRAINT app_levels_owner_id_fkey 
    FOREIGN KEY(owner_id) 
    REFERENCES "agent_db_users_public".users (id) 
    ON DELETE CASCADE;

