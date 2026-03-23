-- Deploy: schemas/agentic_db_status_public/tables/app_levels/constraints/app_levels_owner_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_status_public/schema
-- requires: schemas/agentic_db_users_public/tables/users/table
-- requires: schemas/agentic_db_status_public/tables/app_levels/table


ALTER TABLE "agentic_db_status_public".app_levels 
  ADD CONSTRAINT app_levels_owner_id_fkey 
    FOREIGN KEY(owner_id) 
    REFERENCES "agentic_db_users_public".users (id) 
    ON DELETE SET NULL;

