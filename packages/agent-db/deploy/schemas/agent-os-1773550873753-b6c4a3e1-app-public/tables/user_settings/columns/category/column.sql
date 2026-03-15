-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/user_settings/columns/category/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/user_settings/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/user_settings/columns/value/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".user_settings 
  ADD COLUMN category text;

