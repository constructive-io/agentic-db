-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/images/columns/caption/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/images/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/images/columns/alt_text/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".images 
  ADD COLUMN caption text;

