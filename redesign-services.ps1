$filePath = "c:\Users\oluom\OneDrive\Desktop\Vizra-Tech-Inc\home\index-3.html"
$content = [IO.File]::ReadAllText($filePath, [System.Text.Encoding]::UTF8)

# Find the start of the services grid section
$oldStart = @'
			<!-- Services Grid -->
			<div class="row g-4">
					<div class="row" id="scroll-container">
'@

# Find where the section ends
$oldEnd = @'
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--Emd dashbord Section one -->
'@

$startIndex = $content.IndexOf($oldStart)
$endIndex = $content.IndexOf($oldEnd, $startIndex)

if ($startIndex -ge 0 -and $endIndex -ge 0) {
    Write-Host "Found section at index $startIndex to $endIndex" -ForegroundColor Cyan
    
    $beforeSection = $content.Substring(0, $startIndex)
    $afterSection = $content.Substring($endIndex + $oldEnd.Length)
    
    $newServices = @'
			<!-- Services Grid -->
			<div class="row g-4">
				<!-- Service Card 1 -->
				<div class="col-xl-3 col-lg-4 col-md-6">
					<div class="modern-service-card" style="background: linear-gradient(135deg, #667eea 0%, #764ba2 100%); border-radius: 24px; padding: 40px 30px; height: 100%; position: relative; overflow: hidden; transition: all 0.4s ease; cursor: pointer;">
						<div style="position: absolute; top: -50px; right: -50px; width: 150px; height: 150px; background: rgba(255,255,255,0.1); border-radius: 50%; transition: all 0.4s ease;"></div>
						<div class="service-icon" style="width: 70px; height: 70px; background: rgba(255,255,255,0.2); backdrop-filter: blur(10px); border-radius: 16px; display: flex; align-items: center; justify-content: center; margin-bottom: 25px; position: relative; z-index: 2;">
							<svg width="35" height="35" viewBox="0 0 35 35" fill="none" xmlns="http://www.w3.org/2000/svg">
								<path d="M17.5 3L4 10.5V24.5L17.5 32L31 24.5V10.5L17.5 3Z" stroke="white" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
								<path d="M17.5 17.5V32" stroke="white" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
								<path d="M31 10.5L17.5 17.5L4 10.5" stroke="white" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
							</svg>
						</div>
						<h3 style="color: white; font-size: 22px; font-weight: 700; margin-bottom: 15px; position: relative; z-index: 2;">Startup & Product Development</h3>
						<p style="color: rgba(255,255,255,0.9); font-size: 15px; line-height: 1.6; margin-bottom: 25px; position: relative; z-index: 2;">Transform your vision into reality with MVP development, rapid prototyping, and full-scale launch.</p>
						<a href="service-details.html" style="color: white; font-weight: 600; font-size: 14px; display: inline-flex; align-items: center; gap: 8px; position: relative; z-index: 2; text-decoration: none;">
							LEARN MORE <i class="fa-light fa-arrow-right"></i>
						</a>
					</div>
				</div>

				<!-- Service Card 2 -->
				<div class="col-xl-3 col-lg-4 col-md-6">
					<div class="modern-service-card" style="background: linear-gradient(135deg, #f093fb 0%, #f5576c 100%); border-radius: 24px; padding: 40px 30px; height: 100%; position: relative; overflow: hidden; transition: all 0.4s ease; cursor: pointer;">
						<div style="position: absolute; top: -50px; right: -50px; width: 150px; height: 150px; background: rgba(255,255,255,0.1); border-radius: 50%; transition: all 0.4s ease;"></div>
						<div class="service-icon" style="width: 70px; height: 70px; background: rgba(255,255,255,0.2); backdrop-filter: blur(10px); border-radius: 16px; display: flex; align-items: center; justify-content: center; margin-bottom: 25px; position: relative; z-index: 2;">
							<svg width="35" height="35" viewBox="0 0 35 35" fill="none" xmlns="http://www.w3.org/2000/svg">
								<rect x="5" y="5" width="25" height="25" rx="3" stroke="white" stroke-width="2"/>
								<path d="M12 15L16 19L23 12" stroke="white" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
							</svg>
						</div>
						<h3 style="color: white; font-size: 22px; font-weight: 700; margin-bottom: 15px; position: relative; z-index: 2;">Custom Software Development</h3>
						<p style="color: rgba(255,255,255,0.9); font-size: 15px; line-height: 1.6; margin-bottom: 25px; position: relative; z-index: 2;">Build powerful web and mobile apps with enterprise solutions, SaaS platforms, and API services.</p>
						<a href="service-details.html" style="color: white; font-weight: 600; font-size: 14px; display: inline-flex; align-items: center; gap: 8px; position: relative; z-index: 2; text-decoration: none;">
							LEARN MORE <i class="fa-light fa-arrow-right"></i>
						</a>
					</div>
				</div>

				<!-- Service Card 3 -->
				<div class="col-xl-3 col-lg-4 col-md-6">
					<div class="modern-service-card" style="background: linear-gradient(135deg, #4facfe 0%, #00f2fe 100%); border-radius: 24px; padding: 40px 30px; height: 100%; position: relative; overflow: hidden; transition: all 0.4s ease; cursor: pointer;">
						<div style="position: absolute; top: -50px; right: -50px; width: 150px; height: 150px; background: rgba(255,255,255,0.1); border-radius: 50%; transition: all 0.4s ease;"></div>
						<div class="service-icon" style="width: 70px; height: 70px; background: rgba(255,255,255,0.2); backdrop-filter: blur(10px); border-radius: 16px; display: flex; align-items: center; justify-content: center; margin-bottom: 25px; position: relative; z-index: 2;">
							<svg width="35" height="35" viewBox="0 0 35 35" fill="none" xmlns="http://www.w3.org/2000/svg">
								<path d="M17.5 3L31 10.5V24.5L17.5 32L4 24.5V10.5L17.5 3Z" stroke="white" stroke-width="2"/>
								<circle cx="17.5" cy="17.5" r="5" stroke="white" stroke-width="2"/>
							</svg>
						</div>
						<h3 style="color: white; font-size: 22px; font-weight: 700; margin-bottom: 15px; position: relative; z-index: 2;">UI/UX & Product Design</h3>
						<p style="color: rgba(255,255,255,0.9); font-size: 15px; line-height: 1.6; margin-bottom: 25px; position: relative; z-index: 2;">Create exceptional user experiences with research, prototyping, and high-fidelity design.</p>
						<a href="service-details.html" style="color: white; font-weight: 600; font-size: 14px; display: inline-flex; align-items: center; gap: 8px; position: relative; z-index: 2; text-decoration: none;">
							LEARN MORE <i class="fa-light fa-arrow-right"></i>
						</a>
					</div>
				</div>

				<!-- Service Card 4 -->
				<div class="col-xl-3 col-lg-4 col-md-6">
					<div class="modern-service-card" style="background: linear-gradient(135deg, #43e97b 0%, #38f9d7 100%); border-radius: 24px; padding: 40px 30px; height: 100%; position: relative; overflow: hidden; transition: all 0.4s ease; cursor: pointer;">
						<div style="position: absolute; top: -50px; right: -50px; width: 150px; height: 150px; background: rgba(255,255,255,0.1); border-radius: 50%; transition: all 0.4s ease;"></div>
						<div class="service-icon" style="width: 70px; height: 70px; background: rgba(255,255,255,0.2); backdrop-filter: blur(10px); border-radius: 16px; display: flex; align-items: center; justify-content: center; margin-bottom: 25px; position: relative; z-index: 2;">
							<svg width="35" height="35" viewBox="0 0 35 35" fill="none" xmlns="http://www.w3.org/2000/svg">
								<circle cx="10" cy="17.5" r="3" stroke="white" stroke-width="2"/>
								<circle cx="25" cy="17.5" r="3" stroke="white" stroke-width="2"/>
								<circle cx="17.5" cy="8" r="3" stroke="white" stroke-width="2"/>
								<circle cx="17.5" cy="27" r="3" stroke="white" stroke-width="2"/>
								<path d="M13 17.5H22M17.5 11V24" stroke="white" stroke-width="2"/>
							</svg>
						</div>
						<h3 style="color: white; font-size: 22px; font-weight: 700; margin-bottom: 15px; position: relative; z-index: 2;">Outsourced Development Teams</h3>
						<p style="color: rgba(255,255,255,0.9); font-size: 15px; line-height: 1.6; margin-bottom: 25px; position: relative; z-index: 2;">Extend your team with skilled full-stack developers, DevOps engineers, and project managers.</p>
						<a href="service-details.html" style="color: white; font-weight: 600; font-size: 14px; display: inline-flex; align-items: center; gap: 8px; position: relative; z-index: 2; text-decoration: none;">
							LEARN MORE <i class="fa-light fa-arrow-right"></i>
						</a>
					</div>
				</div>

				<!-- Service Card 5 -->
				<div class="col-xl-3 col-lg-4 col-md-6">
					<div class="modern-service-card" style="background: linear-gradient(135deg, #fa709a 0%, #fee140 100%); border-radius: 24px; padding: 40px 30px; height: 100%; position: relative; overflow: hidden; transition: all 0.4s ease; cursor: pointer;">
						<div style="position: absolute; top: -50px; right: -50px; width: 150px; height: 150px; background: rgba(255,255,255,0.1); border-radius: 50%; transition: all 0.4s ease;"></div>
						<div class="service-icon" style="width: 70px; height: 70px; background: rgba(255,255,255,0.2); backdrop-filter: blur(10px); border-radius: 16px; display: flex; align-items: center; justify-content: center; margin-bottom: 25px; position: relative; z-index: 2;">
							<svg width="35" height="35" viewBox="0 0 35 35" fill="none" xmlns="http://www.w3.org/2000/svg">
								<path d="M17.5 28C23.299 28 28 23.299 28 17.5C28 11.701 23.299 7 17.5 7C11.701 7 7 11.701 7 17.5C7 23.299 11.701 28 17.5 28Z" stroke="white" stroke-width="2"/>
								<path d="M17.5 12V17.5L21 21" stroke="white" stroke-width="2" stroke-linecap="round"/>
							</svg>
						</div>
						<h3 style="color: white; font-size: 22px; font-weight: 700; margin-bottom: 15px; position: relative; z-index: 2;">AI & Automation Services</h3>
						<p style="color: rgba(255,255,255,0.9); font-size: 15px; line-height: 1.6; margin-bottom: 25px; position: relative; z-index: 2;">Leverage cutting-edge AI with model integration, process automation, and chatbot development.</p>
						<a href="service-details.html" style="color: white; font-weight: 600; font-size: 14px; display: inline-flex; align-items: center; gap: 8px; position: relative; z-index: 2; text-decoration: none;">
							LEARN MORE <i class="fa-light fa-arrow-right"></i>
						</a>
					</div>
				</div>

				<!-- Service Card 6 -->
				<div class="col-xl-3 col-lg-4 col-md-6">
					<div class="modern-service-card" style="background: linear-gradient(135deg, #30cfd0 0%, #330867 100%); border-radius: 24px; padding: 40px 30px; height: 100%; position: relative; overflow: hidden; transition: all 0.4s ease; cursor: pointer;">
						<div style="position: absolute; top: -50px; right: -50px; width: 150px; height: 150px; background: rgba(255,255,255,0.1); border-radius: 50%; transition: all 0.4s ease;"></div>
						<div class="service-icon" style="width: 70px; height: 70px; background: rgba(255,255,255,0.2); backdrop-filter: blur(10px); border-radius: 16px; display: flex; align-items: center; justify-content: center; margin-bottom: 25px; position: relative; z-index: 2;">
							<svg width="35" height="35" viewBox="0 0 35 35" fill="none" xmlns="http://www.w3.org/2000/svg">
								<path d="M8 15C8 11.686 10.686 9 14 9H21C24.314 9 27 11.686 27 15V20C27 23.314 24.314 26 21 26H14C10.686 26 8 23.314 8 20V15Z" stroke="white" stroke-width="2"/>
								<path d="M14 9V6C14 4.895 14.895 4 16 4H19C20.105 4 21 4.895 21 6V9" stroke="white" stroke-width="2"/>
							</svg>
						</div>
						<h3 style="color: white; font-size: 22px; font-weight: 700; margin-bottom: 15px; position: relative; z-index: 2;">Cloud/DevOps & Infrastructure</h3>
						<p style="color: rgba(255,255,255,0.9); font-size: 15px; line-height: 1.6; margin-bottom: 25px; position: relative; z-index: 2;">Build robust cloud infrastructure with migration, CI/CD pipelines, and performance tuning.</p>
						<a href="service-details.html" style="color: white; font-weight: 600; font-size: 14px; display: inline-flex; align-items: center; gap: 8px; position: relative; z-index: 2; text-decoration: none;">
							LEARN MORE <i class="fa-light fa-arrow-right"></i>
						</a>
					</div>
				</div>

				<!-- Service Card 7 -->
				<div class="col-xl-3 col-lg-4 col-md-6">
					<div class="modern-service-card" style="background: linear-gradient(135deg, #a8edea 0%, #fed6e3 100%); border-radius: 24px; padding: 40px 30px; height: 100%; position: relative; overflow: hidden; transition: all 0.4s ease; cursor: pointer; box-shadow: 0 10px 30px rgba(0,0,0,0.1);">
						<div style="position: absolute; top: -50px; right: -50px; width: 150px; height: 150px; background: rgba(103,102,255,0.1); border-radius: 50%; transition: all 0.4s ease;"></div>
						<div class="service-icon" style="width: 70px; height: 70px; background: rgba(103, 102, 255, 0.2); backdrop-filter: blur(10px); border-radius: 16px; display: flex; align-items: center; justify-content: center; margin-bottom: 25px; position: relative; z-index: 2;">
							<svg width="35" height="35" viewBox="0 0 35 35" fill="none" xmlns="http://www.w3.org/2000/svg">
								<path d="M27 9L13 23L7 17" stroke="#6766FF" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round"/>
								<circle cx="17.5" cy="17.5" r="13" stroke="#6766FF" stroke-width="2"/>
							</svg>
						</div>
						<h3 style="color: #6766FF; font-size: 22px; font-weight: 700; margin-bottom: 15px; position: relative; z-index: 2;">QA Testing & Quality Assurance</h3>
						<p style="color: #333; font-size: 15px; line-height: 1.6; margin-bottom: 25px; position: relative; z-index: 2;">Ensure flawless performance with manual, automation, API, and security testing services.</p>
						<a href="service-details.html" style="color: #6766FF; font-weight: 600; font-size: 14px; display: inline-flex; align-items: center; gap: 8px; position: relative; z-index: 2; text-decoration: none;">
							LEARN MORE <i class="fa-light fa-arrow-right"></i>
						</a>
					</div>
				</div>

				<!-- Service Card 8 -->
				<div class="col-xl-3 col-lg-4 col-md-6">
					<div class="modern-service-card" style="background: linear-gradient(135deg, #ffecd2 0%, #fcb69f 100%); border-radius: 24px; padding: 40px 30px; height: 100%; position: relative; overflow: hidden; transition: all 0.4s ease; cursor: pointer; box-shadow: 0 10px 30px rgba(0,0,0,0.1);">
						<div style="position: absolute; top: -50px; right: -50px; width: 150px; height: 150px; background: rgba(103,102,255,0.1); border-radius: 50%; transition: all 0.4s ease;"></div>
						<div class="service-icon" style="width: 70px; height: 70px; background: rgba(103, 102, 255, 0.2); backdrop-filter: blur(10px); border-radius: 16px; display: flex; align-items: center; justify-content: center; margin-bottom: 25px; position: relative; z-index: 2;">
							<svg width="35" height="35" viewBox="0 0 35 35" fill="none" xmlns="http://www.w3.org/2000/svg">
								<path d="M17.5 31C24.956 31 31 24.956 31 17.5C31 10.044 24.956 4 17.5 4C10.044 4 4 10.044 4 17.5C4 24.956 10.044 31 17.5 31Z" stroke="#6766FF" stroke-width="2"/>
								<path d="M17.5 10V17.5L22 22" stroke="#6766FF" stroke-width="2" stroke-linecap="round"/>
							</svg>
						</div>
						<h3 style="color: #6766FF; font-size: 22px; font-weight: 700; margin-bottom: 15px; position: relative; z-index: 2;">Technical Support & Maintenance</h3>
						<p style="color: #333; font-size: 15px; line-height: 1.6; margin-bottom: 25px; position: relative; z-index: 2;">Keep systems running smoothly with 24/7 support, monitoring, and maintenance packages.</p>
						<a href="service-details.html" style="color: #6766FF; font-weight: 600; font-size: 14px; display: inline-flex; align-items: center; gap: 8px; position: relative; z-index: 2; text-decoration: none;">
							LEARN MORE <i class="fa-light fa-arrow-right"></i>
						</a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--Emd dashbord Section one -->
'@
    
    $content = $beforeSection + $newServices + $afterSection
    [IO.File]::WriteAllText($filePath, $content, [System.Text.Encoding]::UTF8)
    
    Write-Host "`nServices section successfully redesigned with stunning gradient cards!" -ForegroundColor Green
    Write-Host "The new design features:" -ForegroundColor Cyan
    Write-Host "  - Beautiful gradient backgrounds for each service" -ForegroundColor White
    Write-Host "  - Custom SVG icons with glassmorphism effects" -ForegroundColor White
    Write-Host "  - 4-column responsive grid layout" -ForegroundColor White
    Write-Host "  - Hover effects and animations" -ForegroundColor White
    Write-Host "  - Centered header with modern badge design" -ForegroundColor White
} else {
    Write-Host "Could not find section markers." -ForegroundColor Red
    Write-Host "StartIndex: $startIndex" -ForegroundColor Yellow
    Write-Host "EndIndex: $endIndex" -ForegroundColor Yellow
}
