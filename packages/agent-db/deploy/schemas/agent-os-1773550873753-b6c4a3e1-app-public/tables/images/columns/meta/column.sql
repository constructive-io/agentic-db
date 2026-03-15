-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/images/columns/meta/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/images/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/images/columns/url/alterations/alt0000000857


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".images 
  ADD COLUMN meta jsonb;

