-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/notes/columns/created_at/alterations/alt0000000911
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/notes/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/notes/columns/created_at/column
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/notes/policies/auth_del_entity_membership/policy


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".notes 
  ALTER COLUMN created_at SET NOT NULL;

