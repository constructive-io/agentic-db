-- Deploy: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_chart_edges/columns/child_id/alterations/alt0000002171
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_chart_edges/table
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_chart_edges/columns/child_id/column
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_chart_edges/columns/parent_id/column


ALTER TABLE "agent-os-1773551593867-bac64076-memberships-public".org_chart_edges 
  ADD CONSTRAINT org_chart_edges_child_id_parent_id_chk 
    CHECK (child_id <> parent_id);

