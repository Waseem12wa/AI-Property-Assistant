-- =====================================================
-- AI Property Assistant - Supabase Database Schema
-- =====================================================

-- Create the properties table
CREATE TABLE IF NOT EXISTS properties (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    property_type VARCHAR(50) NOT NULL,
    price NUMERIC(10, 2) NOT NULL,
    city VARCHAR(100) NOT NULL,
    state VARCHAR(100) NOT NULL,
    availability BOOLEAN DEFAULT true,
    bedrooms INTEGER,
    amenities TEXT[],
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

-- Create indexes for better query performance
CREATE INDEX IF NOT EXISTS idx_properties_type ON properties(property_type);
CREATE INDEX IF NOT EXISTS idx_properties_city ON properties(city);
CREATE INDEX IF NOT EXISTS idx_properties_price ON properties(price);
CREATE INDEX IF NOT EXISTS idx_properties_availability ON properties(availability);

-- Create a composite index for common queries
CREATE INDEX IF NOT EXISTS idx_properties_search ON properties(property_type, city, price, availability);

-- Add comment to the table
COMMENT ON TABLE properties IS 'Stores real estate property listings for the AI Property Assistant';

-- =====================================================
-- Sample Data for Testing
-- =====================================================

INSERT INTO properties (property_type, price, city, state, availability, bedrooms, amenities) VALUES
-- New York Properties
('Apartment', 3500.00, 'New York', 'New York', true, 2, ARRAY['Gym', 'Pool', 'Parking', 'Security']),
('Apartment', 2800.00, 'New York', 'New York', true, 1, ARRAY['Gym', 'Security', 'Elevator']),
('Apartment', 3200.00, 'New York', 'New York', true, 2, ARRAY['Pool', 'Parking', 'Pet Friendly']),
('Studio', 2200.00, 'New York', 'New York', true, 0, ARRAY['Gym', 'Security']),
('Studio', 2500.00, 'New York', 'New York', true, 0, ARRAY['Gym', 'Pool', 'Concierge']),
('Villa', 8500.00, 'New York', 'New York', true, 4, ARRAY['Pool', 'Garden', 'Garage', 'Security']),

-- Miami Properties
('Apartment', 2400.00, 'Miami', 'Florida', true, 2, ARRAY['Pool', 'Beach Access', 'Parking']),
('Apartment', 2100.00, 'Miami', 'Florida', true, 1, ARRAY['Gym', 'Pool', 'Security']),
('Villa', 6500.00, 'Miami', 'Florida', true, 3, ARRAY['Pool', 'Beach Access', 'Garden', 'Garage']),
('Studio', 1800.00, 'Miami', 'Florida', true, 0, ARRAY['Gym', 'Security']),
('Condo', 3200.00, 'Miami', 'Florida', true, 2, ARRAY['Pool', 'Gym', 'Parking', 'Beach Access']),

-- Los Angeles Properties
('Apartment', 2900.00, 'Los Angeles', 'California', true, 2, ARRAY['Gym', 'Parking', 'Security']),
('Studio', 1900.00, 'Los Angeles', 'California', true, 0, ARRAY['Gym', 'Pet Friendly']),
('Villa', 7500.00, 'Los Angeles', 'California', true, 4, ARRAY['Pool', 'Garden', 'Garage', 'Security']),
('Condo', 3500.00, 'Los Angeles', 'California', true, 3, ARRAY['Pool', 'Gym', 'Parking']),

-- Chicago Properties
('Apartment', 2200.00, 'Chicago', 'Illinois', true, 2, ARRAY['Gym', 'Parking', 'Security']),
('Apartment', 1800.00, 'Chicago', 'Illinois', true, 1, ARRAY['Gym', 'Security']),
('Studio', 1500.00, 'Chicago', 'Illinois', true, 0, ARRAY['Gym']),
('Condo', 2800.00, 'Chicago', 'Illinois', true, 2, ARRAY['Pool', 'Gym', 'Parking']),

-- Boston Properties
('Apartment', 3100.00, 'Boston', 'Massachusetts', true, 2, ARRAY['Gym', 'Parking', 'Security', 'Elevator']),
('Studio', 2100.00, 'Boston', 'Massachusetts', true, 0, ARRAY['Gym', 'Security']),
('Villa', 9500.00, 'Boston', 'Massachusetts', true, 5, ARRAY['Pool', 'Garden', 'Garage', 'Security']),

-- San Francisco Properties
('Apartment', 3800.00, 'San Francisco', 'California', true, 2, ARRAY['Gym', 'Parking', 'Security', 'Bike Storage']),
('Studio', 2600.00, 'San Francisco', 'California', true, 0, ARRAY['Gym', 'Concierge']),
('Condo', 4200.00, 'San Francisco', 'California', true, 3, ARRAY['Pool', 'Gym', 'Parking', 'Bay View']);

-- =====================================================
-- Enable Row Level Security (Optional - for production)
-- =====================================================
-- ALTER TABLE properties ENABLE ROW LEVEL SECURITY;

-- Create policy for read access (public read)
-- CREATE POLICY "Enable read access for all users" ON properties
--     FOR SELECT USING (true);
