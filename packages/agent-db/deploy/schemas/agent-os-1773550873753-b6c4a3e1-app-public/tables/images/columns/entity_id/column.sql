-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/images/columns/entity_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/images/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-users-public/tables/users/policies/auth_del_admin_deletes/policy


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".images 
  ADD COLUMN entity_id uuid;

