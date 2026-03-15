-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/habits/columns/frequency/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/habits/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/habits/columns/name/alterations/alt0000003110


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".habits 
  ADD COLUMN frequency text;

