-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/recipes/columns/prep_time_minutes/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/recipes/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/recipes/columns/cuisine/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".recipes 
  ADD COLUMN prep_time_minutes int;

