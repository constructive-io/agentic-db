-- Deploy: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_chart_edge_grants/constraints/org_chart_edge_grants_pkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_chart_edge_grants/table


ALTER TABLE "agent-os-1773551593867-bac64076-memberships-public".org_chart_edge_grants 
  ADD CONSTRAINT org_chart_edge_grants_pkey PRIMARY KEY (id);

