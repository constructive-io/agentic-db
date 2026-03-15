-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/images/columns/url/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/images/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/images/columns/updated_at/alterations/alt0000002465


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".images 
  ADD COLUMN url text;

