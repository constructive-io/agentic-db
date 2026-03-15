-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/contact_links/alterations/alt0000000947
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/contact_links/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/attachments/columns/attachable_id/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".contact_links 
  DISABLE ROW LEVEL SECURITY;

