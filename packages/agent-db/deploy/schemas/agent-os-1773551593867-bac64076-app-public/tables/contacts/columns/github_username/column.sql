-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/contacts/columns/github_username/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/contacts/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/contacts/columns/linkedin_url/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".contacts 
  ADD COLUMN github_username text;

